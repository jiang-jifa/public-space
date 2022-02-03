# テスト粒度


API結合テスト

```
・機能数の少なさにしては、障害件数が多く、そのほとんどは、準正常系のバグだった
　→準正常系の期待値に対し、異常系を返却
　→異常系の期待値に対し、準正常系を返却

・準正常系のバグは、単体テストレベルの流出が多かった
　→バリデーション網羅漏れ
　→項目組み合わせパターンのバリデーション網羅漏れ

・一方、正常系はほぼ問題無かった
```

UI結合テスト

```
・準正常系（バリデーションチェック）の項目単品／組み合わせパターンのUI単体テスト（特にバリデーションチェック、検索条件の境界値など）の網羅
　→実装者側でこれをキチッと実施
```

