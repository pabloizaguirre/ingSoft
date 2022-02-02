
block DTMC

parameter Real T = 1;
parameter Integer MyMagicNumber = 1;
OutputInteger x;  // state of development cycle

Integer counter;

initial equation
x = 1;
counter = 10;

algorithm

when sample(0, T) then

if (counter <= 0)
then
     x := next(pre(x));
end if;

counter := UpdateTimer(counter, pre(x), MyMagicNumber);


end when;



end DTMC;

