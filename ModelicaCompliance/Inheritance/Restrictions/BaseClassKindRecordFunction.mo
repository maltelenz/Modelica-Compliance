within ModelicaCompliance.Inheritance.Restrictions;


model BaseClassKindRecordFunction
  extends Icons.TestCase;

  function Base
    input Real x = 1.0;
    output Real y = x;
  algorithm
  end Base;

  record Derived
    extends Base;
  end Derived;

  Derived d;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that a class with specialization record is not allowed to derive from function.</html>"));
end BaseClassKindRecordFunction;
