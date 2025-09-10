# Context Transfer Protocol (CTP)

CTP is an open JSON standard for **handing off AI context from humans into apps and models**.  
It defines a portable container for a role, global instructions, and optional references such as contacts, companies, and files.

Think of it as a “context capsule” you can create in one platform and paste or link into another.  
It is deliberately **minimal and human-oriented**: users write a role, add optional instructions, and the platform may auto-include files or entity metadata.

- Spec: /spec/ctp-0.1.md  
- Schema: /schema/ctp-0.1.json  
- Example: /examples/valid-minimal.json  
- Licence: MIT for code and examples  

## Quick start

Validate a CTP file against the schema with any JSON Schema validator that supports Draft 2020-12.

## Compatibility

CTP links can be pasted directly into:

- **Claude** (Anthropic)  
- **Grok** (xAI)  
- **Copilot** (OpenAI + Microsoft)  

These apps will ingest the context (`role` and `instructions`) immediately.  

⚠️ **Note on files:** file URLs are already included in the CTP format, but current model UIs do not yet fetch and read them automatically. Work is in progress to enable this.
## Validation (for contributors)

If you are editing the schema or adding new example files, you can validate them locally with [AJV](https://ajv.js.org/).

```bash
git clone https://github.com/context-transfer-protocol/ctp-spec.git
cd ctp-spec
npm install
npm run validate
```
## How to use CTP

1. Create a context in your platform (write a role, add instructions, upload files if needed).  
2. Copy the generated CTP link.  
3. Paste it into Claude, CoPilot, Grok, or any compatible AI app.  

The model will automatically ingest the context and start working with it.

## Design scope

CTP is focused on:

- **Human handoff:** enabling a person to take context they’ve prepared (role, instructions, files, entities) and transfer it into an AI model or app.  

- **Simplicity:** everything beyond the required fields (`id`, `purpose`, `ctp_version`, `role`) is optional and usually auto-populated by the platform.  

- **Portability:** the same container works across different apps, models, and vendors.  

## What CTP is not

- **Not a transport or runtime protocol.**  
  CTP is a payload format, not a communication channel. It does not handle streaming, RPC, or tool discovery.  

- **Not MCP.**  
  The [Model Context Protocol (MCP)](https://modelcontextprotocol.io/) defines machine-to-machine connections, resource discovery, and tool execution.  
  CTP complements MCP by defining a **human-authored, portable JSON capsule** that could be carried over MCP or simply pasted into a model UI.  
  If MCP is about *how machines talk*, CTP is about *what a human hands over*.  

## Extensibility

CTP starts with a small set of optional objects:

- `people` — e.g. persons relevant to the context (auto-populated from your platform’s person records).  
- `companies` — e.g. organisations relevant to the context.  
- `files` — URLs of uploaded files that should be considered as part of the context.  

Future versions may introduce additional object types such as events, datasets, or other domain-specific entities.  

A generic `objects[]` array is also under consideration. Each entry would include a `type` field and supporting properties. This pattern would allow new entity types to be carried in a consistent way without breaking compatibility.  

## Minimal Example

```json
{
  "id": "550e8400-e29b-41d4-a716-446655440000",
  "purpose": "handoff",
  "ctp_version": "0.1.0",
  "role": "You are a helpful assistant that summarises documents."
}
```

## Authors and maintainers

**Editor:** Gerard Donnelly  
LinkedIn: https://www.linkedin.com/in/gerard-donnelly/  

## Want to contribute

If you’re interested in helping shape the Context Transfer Protocol or contributing examples, schema improvements, or adapters, please reach out or open an issue — collaboration is very welcome.  
Contact: hello@context-transfer-protocol.org  

## Contact us

hello@context-transfer-protocol.org