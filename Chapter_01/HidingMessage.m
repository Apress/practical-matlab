% Name of this file is HidingMessage.m
% This is Example 1.13 
% This code encrypts and decrypts a message
%Encryption starts here
Message = 'Start sending message at 8:30';
Encryp = double(Message)+3;
fprintf('Encrypted Message : %s\n',char(Encryp))
%Decryption starts here
Decryp = Encryp-3;
fprintf('Decrypted Message : %s\n',char(Decryp))
