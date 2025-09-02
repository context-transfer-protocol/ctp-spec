# Context Transfer Protocol (CTP)

CTP is an open JSON standard for handing off AI context between platforms, agents, and models. It defines a portable container for a role, global instructions, and optional references such as contacts, companies, and files.

- Spec: /spec/ctp-0.2.md
- Schema: /schema/ctp.schema.json
- Example: /examples/minimal.json
- Licence: MIT for code and examples

## Quick start
Validate a CTP file against the schema with any JSON Schema validator that supports Draft 2020-12.

## Extensibility

CTP starts with a small set of optional objects:
- contacts
- companies
- files

Future versions may introduce additional object types such as events, datasets, or other domain-specific entities.

A generic objects array is also under consideration. Each entry would include a type field and any supporting properties. This pattern allows future entity types to be carried in a consistent way without breaking compatibility.

## Authors and maintainers
**Editor:** Gerard Donnelly  
LinkedIn: https://www.linkedin.com/in/gerard-donnelly/  
Contact: hello@context-transfer-protocol.org
