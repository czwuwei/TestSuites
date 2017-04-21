# TestSuites
Automatically load test cases into UITableView layouts. Making a test app becomes more simple.

# Tutorial
1. Create a class extends protocol `CTSTestSuitesLoader` provides test cases implements

    ```objc
    #import "CTSTestSuitesManager.h"

    @interface TestCaseSample : NSObject <CTSTestSuitesLoader>

    @end
    ```

2. Implement protocol method `-(CTSTestGroup *)loadTestGroup`

    ```objc
    #import "TestCaseSample.h"

    @implementation TestCaseSample

    -(CTSTestGroup *)loadTestGroup {
        CTSTestGroup* group = [[CTSTestGroup alloc] initWithName:@"sample case"];
        [group addTestItem:[CTSTestItem testItemWithName:@"case 1" handler:^(UIViewController * ctxViewCtrl) {
            NSLog(@"test case 1");
        }]];

        return group;
    }

    @end
    ```

3. Register `TestCaseSample` instance before `MasterViewController` appears.

    ```objc
    CTSTestSuitesManager* mngr = [CTSTestSuitesManager sharedManager];
    [mngr registerTestSuitesLoader:[TestCaseSample new]];
    ```
