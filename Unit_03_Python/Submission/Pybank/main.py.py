#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[4]:


path = "budget_data.csv"


# In[5]:


budget = pd.read_csv(path)


# In[6]:


budget.head


# In[9]:


total_rows = budget.Date.count()
total_rows


# In[10]:


# adding total budget
total_profit = budget["Profit/Losses"].sum()
total_profit


# In[11]:


total_profit/total_rows


# In[12]:


changes = []
for indx, row in budget.iterrows():
   print(indx,row['Date'], row['Profit/Losses'])
   if (indx < 85):
       change = budget['Profit/Losses'][indx+1] - row['Profit/Losses']
       #print(change)
       changes.append(change)


# In[13]:


avg_change = sum(changes)/85


# In[14]:


max_value = max(changes)
min_value = min(changes)


# In[15]:


print (max_value)


# In[16]:


print (min_value)


# In[17]:


changes.index(max_value)


# In[18]:


max_change = changes.index(max_value)


# In[24]:


min_change = changes.index(min_value)


# In[27]:


max_month = budget.iloc[max_change +1].Date
print (max_month)


# In[28]:


min_month = budget.iloc[min_change +1].Date
print (min_month)


# In[29]:


output = (
       f"\nFinancial Analysis\n"
   f"----------------------------\n"
   f"Total Months: {total_rows}\n"
   f"Total: ${total_profit}\n"
   f"Average Change: ${avg_change}\n"
   f"Greatest Increase in Profit: {max_month} (${max_value})\n"
   f"Greatest Decrease in Profit: {min_month} (${min_value})\n")


# In[30]:


text_file = open("output.txt", "w")
text_file.write(output)
text_file.close()


# In[ ]:


#TA worked assignment in a group setting

