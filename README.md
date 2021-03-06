# Enigma
Encrypts/Decrypts based on series of key set rotations

### Usage

The tool is used from the command line like so:

```
$ ruby ./lib/enigma/encrypt/encrypt.rb message.txt encrypted.txt
Created 'encrypted.txt' with the key 82648 and date 030415
```

That will take the plaintext file `message.txt` and create an encrypted file `encrypted.txt`.

Then, if we know the key, we can decrypt:

```
$ ruby ./lib/enigma/decrypt/decrypt.rb encrypted.txt decrypted.txt 82648 030415
Created 'decrypted.txt' with the key 82648 and date 030415
```

But if we don't know the key, we can try to crack it with just the date:

```
$ ruby ./lib/enigma/crack/crack.rb encrypted.txt cracked.txt 030415
Created 'cracked.txt' with the cracked key 82648 and date 030415
```
