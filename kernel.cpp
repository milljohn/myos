
void printf(char *str){
    unsigned short *VideoMemory = (unsigned short *) 0xb800;
    
    for (int i=0; str[i] != '\0'; i++){
        VideoMemory[i] = (VideoMemory[i] & 0xFF00) | str[i];
    }
}


void kernelMain(void *multiboot_structure, unsigned int magicnumber){
    
    printf("Hello World! --- http://www.AlgorithMan.de");
    
    while(1){
        
    }
}
