# Cocos command-line tool

## Prerequisites
* Completed one of the following setups: **[Installation Prerequisites](A/index.html)**, **[Android (Terminal)](B/index.html)**,
**[Android (Eclipse)](C/index.html)**, **[iOS](D/index.html)**, **[Mac OS X](E/index.html)**,
**[Linux](F/index.html)**, **[Windows](G/index.html)**, **[Windows Phone 8](H/index.html)**

## `cocos` command-line tool
Cocos2d-x comes with a command-line tool called __cocos__. It is a cross-platform
tool that allows you to create new cocos2d-x applications as well as __run__ them
and _deploy_ them. __cocos__ works for all cocos2d-x supported platforms, which
include: __ios__, __android__, __mac__, __linux__, __win32__, __wp8_1__ and
__web__. You don't need to use an IDE unless you want to. It has many options,
so let's go through them grouped by function.

## Testing your path for `cocos`
It is necessary for __cocos__ to be in your path or to specify the complete path
to it when using it. An easy test:
```
> cocos -v
```

If you see output like __1.2__ you are all set. If you see anything else you need
to either add the location to your __PATH__ or run __source ~/.bash_profile__ or
specify the full path to __<cocos root>\tools\cocos2d-console\bin__.

## Creating a new project
To create a new project you use the __cocos new__ command. The command is formatted
as:
```
cocos new <game name> -p <package identifier> -l <language> -d <location>
```

Examples:
```
cocos new MyGame -p com.MyCompany.MyGame -l cpp -d ~/MyCompany

cocos new MyGame -p com.MyCompany.MyGame -l lua -d ~/MyCompany

cocos new MyGame -p com.MyCompany.MyGame -l js -d ~/MyCompany
```

You can run __cocos new --help__ to see even more options as well as platform
specific options.

## Compiling a project
As you make changes to your code it is necessary to compile it. We all know this
has to happen, let's go through it. The command is formatted as:
```
cocos compile -s <path to your project> -p <platform> -m <mode> -o <output directory>
```

Examples:
```
cocos compile -s ~/MyCompany/MyGame -p ios -m release -o ~/MyCompany/MyGame/bin

cocos compile -s ~/MyCompany/MyGame -p android -m release -o ~/MyCompany/MyGame/bin

cocos compile -s c:\MyCompany\MyGame -p win32 -m release -o c:\MyCompany\MyGame\bin
```

There is a lot going on here so let's go over the finer points. __-p__ is the __platform__
you are compiling for. __-m__ is mode, __debug__ or __release__ with the default
being __debug__ if this parameter is not specified.

Also, it is important to know that the __-s__ and __-o__ parameters are optional as
well as long as you are already in your project's working directory. Taking the
example above if you are already in __~/MyCompany/MyGame__ then the __cocos compile__
command can be shortened:
```
cocos compile . -p ios -m release
```

You can also specify an optional parameter __-q__ for __quiet__. This lessens the
output that is outputted to the console. Taking an example from above:
```
cocos compile -q -s ~/MyCompany/MyGame -p ios -m release -o ~/MyCompany/MyGame/bin
```

As __cocos__ supports a lot of platforms there are also platform specific options
which allow you to fine tune targeting specific SDK versions, signing code, lua
options as well as web specific options. You can run __cocos compile --help__ to see
all available options broken down by platform.

## Running a project
Once you have created a project you can run it right from the command-line. __cocos__
takes care of launching the environment you specify. The command is formatted as:
```
cocos run -s <path to your project> -p <platform>
```

Examples:
```
cocos run -s ~/MyCompany/MyGame -p ios

cocos run -s ~/MyCompany/MyGame -p android

cocos run -s c:\MyCompany\MyGame -p win32
```

You can also specify to run in __debug__ or __release__ mode using the optional
__-m__ parameter. Excluding this parameter defaults to __debug__.
```
cocos run -s ~/MyCompany/MyGame -p ios -m release
```

As with the __cocos compile__ command above, it is important to know that the
__-s__ and __-o__ parameters are optional as well as long as you are already in your
project's working directory. Taking the example above if you are already in
__~/MyCompany/MyGame__ then the __cocos run__ command can be shortened:
```
cocos run . -p ios -m release
```

When running for the __web__ there are additional parameters that allow you to
specify what web browser you want to run in. You can also specify ip address and
port. This, again is done via command-line parameters. Examples, specifying
Google Chrome:
```
cocos run -s ~/MyCompany/MyGame -p web -b /Applications/Google\ Chrome.app

cocos run -s ~/MyCompany/MyGame -p web -b C:\Program Files\Google\Chrome\Application\chrome.exe

cocos run -s ~/MyCompany/MyGame -p web -b /usr/local/bin/chrome
```
You can run __cocos run --help__ to see all available options broken down by platform.

## Deploy a project
Once you are ready to ship your game __cocos__ provides an easy mechanism for
deploying it. Just like with the commands above you specify what want to do. The
command is formatted as:
```
cocos deploy -s <path to your project> -p <platform> -m <mode>
```

Examples:
```
cocos deploy -s ~/MyCompany/MyGame -p ios -m release

cocos deploy -s ~/MyCompany/MyGame -p android -m release

cocos deploy -s c:\MyCompany\MyGame -p win32 -m release
```

You can also specify an optional parameter __-q__ for __quiet__. This reduces the
output that is logged to the console. Taking an example from above:
```
cocos deploy -q -s ~/MyCompany/MyGame -p ios -m release
```

You can run __cocos deploy --help__ to see all available options broken down by
platform.
