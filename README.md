PHP Project
===========

## Motivation

wip

## Specification

### `metadata`

```json
{
    "metadata": "composer.json"
}
```

```json
{
    "metadata": {
        "name": "zonuexe/php-project",
        "description": "PHP Project metadata definition"
    }
}
```

- `"composer.json"`
  - Import metadata from `composer.json`
- `object`
  - [The composer.json Schema - Composer](https://getcomposer.org/doc/04-schema.md)

### `dependency`

```json
{
    "dependency": ["composer"]
}
```

- `"composer"`
- `"include_path"`

### `environment`

### `server`
