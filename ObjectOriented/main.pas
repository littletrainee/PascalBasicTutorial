{$mode objfpc}
{$m+}

program HelloWorld;

uses person_unit;

var 
    person :   tperson;

begin
    person :=   tperson.tperson('john',20);
    writeln(person.name);
    writeln(person.age);
end.
