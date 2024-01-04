namespace Calculator.Tests
{
    public class OperationsTests
    {
        [Fact]
        public void Sum2Integers()
        {
            Operations op = new Operations();

            var r = op.Sum(2, 2);
            Assert.Equal(4, r);
        }
    }
}