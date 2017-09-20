# hanami-de-ohanami

## About

This application is tutorial the hanami of WAF.

## Doc

### /users/sign_up => Web::users#create

#### request body

```
{
  user: [Schema] {
    email: [String] サインイン時に利用するメールアドレス
    password: [String] サインイン時に利用するパスワード
    password_confirmation: [String] パスワード確認用
  }
}
```

#### response body

```
{
  token: [String] JSON web token
}
```

### /users/sign_in => Web::users#sign_in

#### request body

```
{
  user: [Schema] {
    email: [String] サインイン時に利用するメールアドレス
    password: [String] サインイン時に利用するパスワード
  }
}
```

#### response body

```
{
  token: [String] JSON web token
}
```

### /users/sign_out => Web::users#sign_out

#### request body

```
{
  token: [String] JSON web token
}
```

#### response body

None.

## LICENSE

CC0
