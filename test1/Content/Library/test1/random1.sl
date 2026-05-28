namespace: test1
flow:
  name: random1
  inputs:
    - min: '1'
    - max: '100'
  workflow:
    - generate_random_number:
        do:
          io.cloudslang.base.samples.math.generate_random_number:
            - min: '${min}'
            - max: '${max}'
        publish:
          - random_number: '${return_result}'
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  outputs:
    - random_number: '${random_number}'
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      generate_random_number:
        x: 240
        'y': 120
        navigate:
          1dcea573-1fd6-49ac-78bf-7da59c9a2145:
            targetId: 17c2770a-f3a8-c040-63cb-ad0102bc51ca
            port: SUCCESS
    results:
      SUCCESS:
        17c2770a-f3a8-c040-63cb-ad0102bc51ca:
          x: 480
          'y': 120
