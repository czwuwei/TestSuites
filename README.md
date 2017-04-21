# TestSuites
Automatically load test cases into UITableView layouts. Making a test app becomes more simple.

# Tutorial
1. Create a class extends protocol `CTSTestSuitesLoader` provides test cases implements
```objc
#import "CTSTestSuitesManager.h"

@interface TestCaseSample : NSObject <CTSTestSuitesLoader>

@end
```
