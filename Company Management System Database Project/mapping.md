
     Emp (

Attributes:
SSN ,ID , Name , Salary , DOB , Street , Zone , Sup-SSN , DNO , ContractID , StDate , Type
  PK = (SSN)  
DNo FK → Dept
Sup-SSN FK → EMP 

)

EMP- PHONE ( Attributes: 

  SSN , Phone 
  PK = (SSN , Phone ) 
  SSN FK  → EMP 
)


Car (

  Attributes:

  PlateNo , MOD , Color , SSN 
   
  PK = (PlateNo)
  SSN FK  → EMP 

)

Dept (

 Attributes:

 DNO ,  DName ,loc , SSN 

  PK = (DNO )
  SSN FK → EMP  

)


Skill (

Attributes:

S_ID , SkillName 
PK = (S_ID )

)

Project (

Attributes:

PNo , PName 

PK = (PNo)
 
)

Dependent (

Attributes: 

 SSN , Name , Relation 

PK = ( SSN , Name )
SSN FK → EMP

)


Work_On (

Attributes: 

SSN , PNo , Hours 

PK = (SSN , PNo) 
SSN FK → EMP
PNo FK → project 

)



Skills_Used (

Attributes: 

SSN , PNo , S_ID 

PK( SSN , PNo , S_ID )

SSN FK → EMP 
PNo FK → Project
S_ID FK → Skill 


)
 