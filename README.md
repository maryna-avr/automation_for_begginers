#
How to run your feature tests inside Docker

Chrome
```
docker-compose run --rm chrome cucumber
```

Firefox
```
docker-compose run --rm firefox cucumber
```

Edge
```
docker-compose run --rm edge cucumber
```

When you need to run specific feature (example: features/google.feature) just call:
```
docker-compose run --rm chrome cucumber features/google.feature
```

When you need to debug or see what is going on inside ('secret' can help with it):

Chrome
```
open vnc://localhost:5910
```

Edge
```
open vnc://localhost:5911
```

Firefox
```
open vnc://localhost:5912
```