## 节省 Chromatic 费用

![CleanShot 2022-04-21 at 13 17 35](https://user-images.githubusercontent.com/17308201/164372039-edb51955-b234-4902-ba2d-41cb107b45bd.png)

理想是当 MR 提交 review 时才执行 chromatic

gitlab-ci.yaml

```diff
visual-test:
+    when: manual
    script:
        - yarn chromatic
```

https://docs.gitlab.com/ee/ci/jobs/job_control.html#create-a-job-that-must-be-run-manually