#include <stdio.h>
#include <stdlib.h>
 
typedef struct Node{
int data;
struct Node*next;
}Node;
 
Node* createNode(int data){
Node*node=(Node*)malloc(sizeof(Node));
if(node==NULL){fprintf(stderr,"malloc failed\n");exit(1);}
node->data=data;
node->next=NULL;
return node;}
 
void printList(Node*head){
while(head!=NULL){
printf("%d -> ",head->data);
head=head->next;}
printf("NULL\n");}
 
int main(){
Node*head=createNode(1);
head->next=createNode(2);
head->next->next=createNode(3);
printList(head);
return 0;}
