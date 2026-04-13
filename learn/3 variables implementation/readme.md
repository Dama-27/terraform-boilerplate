First things first: Terraform doesn’t really care what you name your `.tf` files. As long as they end with `.tf` and live in the same directory, Terraform will happily read them all like a good little robot 🤖.

However, if you start splitting things into different directories, then you’ll need to import them properly—just like in programming languages. (Hint: use modules… we’ll get there later 👀)

That said, there are some _conventional_ file names people use to stay sane:

- `main.tf` → where your resources are defined (the “real stuff”)
- `variables.tf` → where input variables live
- `outputs.tf` → where output values are declared
- `providers.tf` → where providers are configured

---

When I first used Terraform a few months ago, I had one big question:

**“Wait… where do the actual values come from?”**

Good question. Glad you asked 😄

You can pass values directly through the terminal when running `terraform apply`, like this:

```
terraform apply \
  -var="ami_id=ami-0c55b159cbfafe1f0" \
  -var="instance_type=t2.micro" \
  -var="region=us-east-1"
```

---

**OR (and this is what people usually do):**

You can define your variables in a `.tfvars` file.

By default, Terraform looks for a file named `terraform.tfvars`, but you can name it anything you like:

- `dev.tfvars`
- `production.tfvars`
- `please-work.tfvars` (no judgment)

If you use a custom name, just tell Terraform which file to use:

```
terraform apply -var-file="dev.tfvars"
```

---

And that’s it! You now know where the “magic values” come from ✨
