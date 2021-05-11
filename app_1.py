import os
import sqlalchemy.dialects.postgresql 
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine('postgresql://soqeugdursadgz:6870178bd4968172c42c8f58267a1188b2343cb48058de3848570af5d538e423@ec2-54-87-112-29.compute-1.amazonaws.com:5432/dcggcf0bnea4h5') # database engine object from SQLAlchemy that manages connections to the database
                                                
db = scoped_session(sessionmaker(bind=engine))    # create a 'scoped session' that ensures different users' interactions with the
                                                # database are kept separate

Data = db.execute("SELECT * FROM test").fetchall() # execute this SQL command and return all of the results
for data in Data:
    print(data) 




# db.execute("INSERT INTO test values(1182145, 978)")

# db.commit()







