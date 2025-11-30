from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime

def test_task():
    print('Airflow работает!')
    return 'Success!'

with DAG(
    'test_dag',
    start_date=datetime(2025,1,1),
    schedule_interval=None,
    catchup=False
) as dag:
    
    test = PythonOperator(
        task_id='test_task',
        python_callable=test_task
    )

