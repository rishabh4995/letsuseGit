@isTest
public with sharing class AddNumbersCalculatorTest {
    @isTest   
    public static void testAddition(){
            System.AssertEquals(4,AddNumbersCalculator.addIntegers(1,3),'testingAddition');

        }

    
}
