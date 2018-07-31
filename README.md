## OpenCV: Open Source Computer Vision Library

### Resources

* Homepage: <http://opencv.org>
* Docs: <http://docs.opencv.org/master/>
* Q&A forum: <http://answers.opencv.org>
* Issue tracking: <https://github.com/opencv/opencv/issues>

### Contributing

Please read the [contribution guidelines](https://github.com/opencv/opencv/wiki/How_to_contribute) before starting work on a pull request.

#### Summary of the guidelines:

* One pull request per issue;
* Choose the right base branch;
* Include tests and documentation;
* Clean up "oops" commits before submitting;
* Follow the [coding style guide](https://github.com/opencv/opencv/wiki/Coding_Style_Guide).

## Cardinalblue

### Build iOS Framework

(1) Make sure `cmake` installed or install it by `brew install cmake`
(2) Run build command, the generated framework file will be in `ios` folder of project root path

```
python platforms/ios/build_framework.py ios
```

### Update CocoaPodspec


### Excluded OpenCV Modules

To downsize opencv framework, we modify the file for building iOS framework (platforms/ios/build_framework.py).
Currently we only include the following modules:

```
- core
- imgproc
```

### Include other modules

Open the file `platforms/ios/build_framework.py`,
Modify the included modules in the main function as you need.

```
without = getExcludingModulesByIncludedOnes(["core", "imgproc"])
```