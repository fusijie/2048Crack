.class final Lcom/a/a/bi$aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "aa"
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/aa",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bd",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/au",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/a/a/c/aa;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/a/a/c/aa",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/a/a/bd;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/a/a/bd;

    :goto_0
    iput-object v0, p0, Lcom/a/a/bi$aa;->d:Lcom/a/a/bd;

    instance-of v0, p1, Lcom/a/a/au;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/a/a/au;

    :goto_1
    iput-object p1, p0, Lcom/a/a/bi$aa;->e:Lcom/a/a/au;

    iget-object v0, p0, Lcom/a/a/bi$aa;->d:Lcom/a/a/bd;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/bi$aa;->e:Lcom/a/a/au;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/a/a/b/aa;->a(Z)V

    iput-object p2, p0, Lcom/a/a/bi$aa;->a:Lcom/a/a/c/aa;

    iput-boolean p3, p0, Lcom/a/a/bi$aa;->b:Z

    iput-object v1, p0, Lcom/a/a/bi$aa;->c:Ljava/lang/Class;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/a/a/c/aa;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/bi$aa;-><init>(Ljava/lang/Object;Lcom/a/a/c/aa;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/ak;",
            "Lcom/a/a/c/aa",
            "<TT;>;)",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/a/a/bi$aa;->a:Lcom/a/a/c/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/bi$aa;->a:Lcom/a/a/c/aa;

    invoke-virtual {v0, p2}, Lcom/a/a/c/aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/a/a/bi$aa;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/bi$aa;->a:Lcom/a/a/c/aa;

    invoke-virtual {v0}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/a/a/bi;

    iget-object v1, p0, Lcom/a/a/bi$aa;->d:Lcom/a/a/bd;

    iget-object v2, p0, Lcom/a/a/bi$aa;->e:Lcom/a/a/au;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/bi;-><init>(Lcom/a/a/bd;Lcom/a/a/au;Lcom/a/a/ak;Lcom/a/a/c/aa;Lcom/a/a/bk;B)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/bi$aa;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
