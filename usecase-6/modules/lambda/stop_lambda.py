import boto3
import os

def lambda_handler(event, context):
    # Initialize the EC2 client
    ec2_client = boto3.client('ec2', region_name='us-east-1') # Replace your Region name

    # Specify the instance ID of the EC2 instance you want to stop
    instance_id = os.environ.get('instance_id')

    # Stop the EC2 instance
    try:
        response = ec2_client.stop_instances(InstanceIds=[instance_id], DryRun=False)
        print(f"Stopping EC2 instance {instance_id}...")
        print(f"Response: {response}")
        return {
            'statusCode': 200,
            'body': f"EC2 instance {instance_id} is being stopped."
        }
    except Exception as e:
        print(f"Error Stopping EC2 instance: {e}")
        return {
            'statusCode': 500,
            'body': f"Error Stopping EC2 instance: {str(e)}"
        }