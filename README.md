# clevis

Clevis is a pluggable framework for automated decryption.

## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with clevis](#setup)
    * [Setup requirements](#setup-requirements)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

It can be used to provide automate decryption of data or even automated
unlocking of LUKS volumes 2.
Once Clevis has subscribed the decryption to a server, the encryption
passphrase is removed, which means in a lost communication event, the
server won’t be able to decrypt, not even with the passphrase.
To prevent this Clevis can subscribe up to 8 keys to 8 different servers/users and it can be
restricted to how many of them are required as a minimum. If you set a value t=2, means
that at least 2 servers have to be available at the moment of decryption.

## Setup

### Setup Requirements

Clevis needs a tang server cluster ready and running andusually is installed and configured
during OS provisioning.

## Usage

Just include the clevis module:

```puppet
include clevis
```

## Limitations

Clevis can not be installed AFTER provisioning.
It should always be part of the provisioning process.

