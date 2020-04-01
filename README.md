# Salesforce Sandbox Org Development Starter Kit

This starter kit is to help develper quickly to start to work with any sandbox environment without run sfdx create dx project.

Please ensure to add all the objects into the manifest file package.xml

## Setup

- Install SFDX CLI

### Step 1 Config Developer Alias

For each sandbox org instance, you only need to run it once. If you are not sure
if it is created, run this command

- list-alias

linux: ./list-alias
window: list-alias.bat

If no alias is registered for the org you will work on, you need to run the following command

- setAlias {yourAlias}

linux: ./setAlias {yourAlias}
window: setAlias.bat {yourAlias}

**Note:** {yourAlias} will be used to run all available commands from sfdx. Thus remember it

## Development Instructions

### How to pull object from ORG

- get {type} {objectName} {yourAlias}

**Note:**
{type} is:

- class
- object (custom object)
- aura
- workflow
- lwc

for example:
linux: ./get class LightningProjectController summer20
window: get.bat class LightningProjectController summer20

### How to push object to ORG

- put {type} {objectName} {yourAlias}

**Note:**
{type} is:

- class
- object (custom object)
- aura
- workflow
- lwc

for exmaple
linux: ./put class LightningProjectController summer20
window: put.bat class LightningProjectController summer20

### How to create new object

- new {type} {objectName} {yourAlias}

**Note:**
{type} is:

- class
- aura
- lwc

For example
linux: ./new class Demo
window: new.bat class Demo

### How to run unit test

- qa {classNames separated by comma} {yourAlias}

Linux: ./qa DemoTest {yourAlias}
window: qa.bat DemoTest {yourAlias}

## How to deploy all object of A specific type

- deploy {type} {yourAlias}

### {type} is

- classes
- aura
- lwc
- staticresources
- workflows
- all (deploy classes, aura, lwc)

linux: ./deploy all
window: deploy.bat

### How to retrieve all objects based package.xml

- retrieve {yourAlias}

linux: ./retrieve {yourAlias}
window: retrieve.bat {yourAlias}
