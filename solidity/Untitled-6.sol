contract MyContract {
    uint[] ages;

    function learnDataLocation(uint[] newAges) public returns (uint a) {
        ages = newAges;
        uint16 myAge = 44;
        uint[] studentAges = ages;


        studentAges[0] = myAge;

        a = studentAges[0];

        return0;
    }
}