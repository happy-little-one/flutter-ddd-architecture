## DDD + clean architecture

every sub-domain has three layer: adapters, apps, models.

- models layer is composed of entities and value objects, this is the place where you put domain logics only, it should be isolated form specific technologies.
- apps layer is composed of use cases, it should express the business use case complete. most of the time, it read data from the in-direction adapters(such as backend api), and write data to the out-direction adapters(such as client store), to accomplish one specific use case.
- adapters layer is responsible for side effects,such as io. 

this is what a regular use case function looks like(in apps layer):

```
void useCaseName() {
    final data = await inDrectionAdapter.get();
    const entity = Entity(data);
    outDerectionAdapter.set(entity);
}
```

## ui

ui just performed as consumer of data from store and user case functions from apps, quiet simple.

```
Wdiget(
 data: store.data,
 onSubmited: apps.someUseCase
)
```

## project structure

lib
├─modules -- domain folders
│  └─todo
│      ├─adapters
│      ├─apps
│      ├─models
│      └─widgets
└─pages

## other

I use getx as the client store. but only treated it as frontend reactive database, haven't use it's controllers. this is what I recommend, keep store simple, write logics in apps layer.

look into the codes, every solution is the simplest, If you have simpler one, be sure to tell me, thanks!