# Terraform Learning Journey (Beginner → Real-World)

Alright… this is NOT one of those “copy-paste tutorial” repos 😅

This is my **hands-on Terraform learning journey** during my internship @ wealthOS, where I actually tried to understand how things work (and broke stuff along the way).

---

## What’s inside?

Instead of random notes, I structured this like a real project:

- Provider setup (single, multi, regions)
- Variables (basics → advanced usage)
- Conditional expressions
- Built-in functions
- Modular architecture (real-world style)

Each section has:

- Simple explanations
- Code examples
- Some “why this matters” thinking

---

## Project Structure

```bash
learn/
├── 1-provider-setup/
├── 2-variables/
├── 3-conditional-expressions/
├── 4-built-in-functions/
├── 5-modular-architecture/
```

---

Trying to keep things clean and not chaos 😄

## How to Run

Here are the basic Terraform commands you’ll use:

---

### Initialize the project

```bash
terraform init
```

> Initializes your Terraform project.
> Run this when you first set things up **or** when you add new providers/modules.

---

### Preview changes

```bash
terraform plan
```

> Shows what changes Terraform is going to make before actually applying them.

---

### Apply changes

```bash
terraform apply
```

> Applies the changes and creates/updates your infrastructure.

---

### Destroy everything

```bash
terraform destroy
```

> Deletes all resources managed by this project. Use with caution. You do NOT need to destroy resources every time. Terraform will automatically detect changes when you run:
>
> `init → plan → apply`

---

That’s the basic workflow:
**init → plan → apply → (destroy if needed)**

## What I learned (so far)

Some real takeaways:

- Structure matters more than writing code
- Terraform can get messy VERY fast without modules
- Versioning is important (learned the hard way 😅)
- Hardcoding values = future pain

## Notes

- This is a learning repo, not production-ready infrastructure
- No sensitive company data is used here
- Everything is recreated for practice

## Let’s connect

- **LinkedIn:** [www.linkedin.com/in/damath-de-silva-1799a22b5](#)
<!-- - **Medium:** [add your blog](#) -->

## If this helped you…

Give a star ⭐
(or at least don’t judge my early mistakes too hard 😄)

BYE BYE… until the next section 👀
