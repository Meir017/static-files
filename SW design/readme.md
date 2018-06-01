# תכון תכנה להנדסה

## OCP - Open Closed Principle

add features without rewriting code

## LSP - Liskov Substitution Principle

use parent class instead of specific implementation

## LSP for SC - Liskov Substitution Principle for State Chart

* <span style="color:green">Allowed</span> to add states and transitions
* <span style="color:green">Allowed</span> to change the conditions and actions of transitions
* <span style="color:red">Forbidden</span> to change or cancel a transitions from a state but <span style="color:green">Allowed</span> to change it's destination
* <span style="color:red">Forbidden</span> to change or cancel an `event` or `triggered operation` in a transitions or `reaction in state`
* <span style="color:green">Allowed</span> to add 'child' transitions or 'sibling' transitions but not change or add a 'parent' transitions 
* <span style="color:red">Forbidden</span> to delete or rename a state

 