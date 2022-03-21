1. address -> 
        1. address is a 160-bit value state variable which can store the address of the contracts or the public halfof the keypair beloning to the external contracts.

        2. There are no arithmatic operation allowed on the address

2. public -> 
        1. The keyword public creates agette function which allows us to access the value of the state valriable from outside the contract.

        it creates a function similar to this 

        function minter() external viewreturns (address) { return address }

3. mapping -> 
        1. Mappingis a more comples data type. It maps the the key to the vlaue.
        2. It is much similar to hashmaps

4.event -> 
        1. We can listen to events to track our transactions


5. constructor -> 
        1. Constructor is a special code that is run only one in the entire lifecycle of the contract i.e at the time of its deployment.

6. error -> error allows us to povide information to a caller of the funvtion about why the operation or      transaction failed



