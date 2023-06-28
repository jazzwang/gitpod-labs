# Reference: 
# [1] https://github.com/brunogarcia/langchain-titanic-sqlite
# [2] https://github.com/kemperd/langchain-sqlchain/blob/main/langchain-sqlchain.ipynb
from dotenv import load_dotenv
from langchain import SQLDatabase, SQLDatabaseChain
from langchain.chat_models import ChatOpenAI

load_dotenv()
db = SQLDatabase.from_uri("sqlite:///titanic.db")
llm = ChatOpenAI(temperature=0, model_name="gpt-3.5-turbo", openai_api_base="http://localhost:8080/v1")
db_chain = SQLDatabaseChain.from_llm(llm=llm, db=db, verbose=True)
# db_chain.run("Give the column name, data type and description of the table titanic in markdown format")
db_chain.run("How many passengers survived?")
db_chain.run("How many passengers were in each class?")
db_chain.run("How many passengers survived/died within each class?")
db_chain.run("What was the average age of survivors vs non-survivors?")
db_chain.run("What was the average age of each passenger class?")
db_chain.run("What was the average fare by passenger class?") 
db_chain.run("What was the average fare by survival?")
db_chain.run("How many siblings/spouses aboard on average, by passenger class?")
db_chain.run("How many parents/children aboard on average, by passenger class?")