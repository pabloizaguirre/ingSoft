class Environment

parameter Real T = 1;

SysParameters p;

OutputBoolean a[p.n];
OutputBoolean b[p.n];
OutputBoolean carry_in;

Integer ak, bk, ck;

Boolean cin[1];

initial equation
for i in 1:p.n loop
   a[i] = true;
   b[i] = true;
end for;
carry_in = true;

ak = 0;
bk = 0;
ck = 0;

algorithm

when sample(0, T) then

b := int2bool(bk, p.n);
cin := int2bool(ck, 1); carry_in := cin[1];
a := int2bool(ak, p.n);

ak := update(ak, p.n);

if (ak == 0)
then
  ck := update(ck, 1);
  if (ck == 0)
  then
     bk := update(bk, p.n);
  end if;  // ck
end if; // ak




end when;

end Environment;
