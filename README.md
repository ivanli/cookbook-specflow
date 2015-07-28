specflow Cookbook
=================
Extracts specflow binaries and adds to the path.

Requirements
------------
Runs on Windows. Requires you to have the binary zipped up in a specific format.

#### packages
- `windows` - specflow needs windows to extract zip files and modify paths.

Attributes
----------
````
default['specflow']['zip_path'] = 'C:\vagrant\installers\SpecFlow_v1.9.0_bin.zip'
default['specflow']['out_folder'] = 'C:\tools\specflow'
````

Usage
-----
Just include `specflow` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[specflow]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Li
