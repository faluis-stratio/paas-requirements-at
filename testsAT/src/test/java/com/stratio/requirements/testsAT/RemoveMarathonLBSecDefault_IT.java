/*
 * © 2017 Stratio Big Data Inc., Sucursal en España.
 *
 * This software is licensed under the Apache License, Version 2.0.
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the terms of the License for more details.
 *
 * SPDX-License-Identifier: Apache-2.0.
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 */
package com.stratio.requirements.testsAT;

import com.stratio.qa.cucumber.testng.CucumberRunner;
import com.stratio.tests.utils.BaseTest;
import cucumber.api.CucumberOptions;
import org.testng.annotations.Test;

@CucumberOptions(features = { "src/test/resources/features/removeMarathonLBSecDefault.feature" })
public class RemoveMarathonLBSecDefault_IT extends BaseTest {

    public RemoveMarathonLBSecDefault_IT() {
    }

    @Test(enabled = true, groups = {"removemarathonlbsecdefault"})
    public void removalDefault() throws Exception {
        new CucumberRunner(this.getClass()).runCukes();
    }
}
