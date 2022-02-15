from gurobipy import *

#모델 생성
mining = Model('mining')


#parameter 입력
t=[0, 1, 2, 3, 4]
m=[0, 1, 2, 3]
r=[5e6, 4e6, 4e6, 5e6]
c=[2e6, 2.5e6, 1.3e6, 3e6]
q=[1.0, 0.7, 1.5, 0.5]
e=[0.9, 0.8, 1.2, 0.6, 1.0]
price=10
d=[(1/1.1)**(year) for year in t]


#결정변수 입력
y=mining.addVars(t,m,name='yield')
a=mining.addVars(t, name='totalYield')
w=mining.addVars(t,m,vtype=GRB.BINARY,name='working')
p=mining.addVars(t,m,vtype=GRB.BINARY,name='openVariable')
l=mining.addVars(t,m,vtype=GRB.BINARY,name='closeVariable')
o=mining.addVars(t,m,vtype=GRB.BINARY,name='open')


#제약조건 입력
mining.addConstrs((quicksum(w[year,mine] for mine in m)<=3 for year in t), name = 'WorkingLimit')
mining.addConstrs(((quicksum(q[mine]*y[year,mine] for mine in m)) 
                   >= a[year]*e[year] for year in t), name = 'QualityRequired')
mining.addConstrs((y[year,mine]<=c[mine]*w[year,mine] for year in t for mine in m), 
                  name = 'MaximumYield')
mining.addConstrs((w[year,mine]<=o[year,mine] for year in t for mine in m), name = 'WorkingInOpen')    
mining.addConstrs((p[year+1,mine] >= p[year,mine] for mine in m for year in t if year < 4), 
                  name='OpenCondition1')
mining.addConstrs((l[year+1,mine] >= l[year,mine] for mine in m for year in t if year < 4), 
                  name='OpenCondition2')
mining.addConstrs((p[year,mine] >= l[year,mine] for mine in m for year in t), 
                  name='OpenCondition3')                             
mining.addConstrs((p[year,mine]-l[year,mine] == o[year,mine] for mine in m for year in t), 
                  name='OpenCondition4')
mining.addConstrs((quicksum(y[year,mine] for mine in m) == a[year] for year in t), 
                  name = 'TotalYield')



#목적함수 입력
obj=quicksum(10*d[year]*a[year] for year in t) - quicksum(r[mine]*d[year]*o[year,mine] for year,mine in o)

mining.setObjective(obj,GRB.MAXIMIZE)

#답 도출
mining.optimize()

mining.write('term_project.lp')

if mining.SolCount > 0:
    mining.printAttr('X')






