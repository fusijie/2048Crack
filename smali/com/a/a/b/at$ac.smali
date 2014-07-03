.class abstract Lcom/a/a/b/at$ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/a/a/b/at$ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/a/a/b/at$ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/a/a/b/at;


# direct methods
.method private constructor <init>(Lcom/a/a/b/at;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/b/at$ac;->e:Lcom/a/a/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/a/a/b/at;->e:Lcom/a/a/b/at$ad;

    iget-object v0, v0, Lcom/a/a/b/at$ad;->d:Lcom/a/a/b/at$ad;

    iput-object v0, p0, Lcom/a/a/b/at$ac;->b:Lcom/a/a/b/at$ad;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/at$ac;->c:Lcom/a/a/b/at$ad;

    iget v0, p1, Lcom/a/a/b/at;->d:I

    iput v0, p0, Lcom/a/a/b/at$ac;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/at;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/b/at$ac;-><init>(Lcom/a/a/b/at;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/a/a/b/at$ad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/at$ac;->b:Lcom/a/a/b/at$ad;

    iget-object v1, p0, Lcom/a/a/b/at$ac;->e:Lcom/a/a/b/at;

    iget-object v1, v1, Lcom/a/a/b/at;->e:Lcom/a/a/b/at$ad;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/at$ac;->e:Lcom/a/a/b/at;

    iget v1, v1, Lcom/a/a/b/at;->d:I

    iget v2, p0, Lcom/a/a/b/at$ac;->d:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/a/a/b/at$ad;->d:Lcom/a/a/b/at$ad;

    iput-object v1, p0, Lcom/a/a/b/at$ac;->b:Lcom/a/a/b/at$ad;

    iput-object v0, p0, Lcom/a/a/b/at$ac;->c:Lcom/a/a/b/at$ad;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/at$ac;->b:Lcom/a/a/b/at$ad;

    iget-object v1, p0, Lcom/a/a/b/at$ac;->e:Lcom/a/a/b/at;

    iget-object v1, v1, Lcom/a/a/b/at;->e:Lcom/a/a/b/at$ad;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/at$ac;->c:Lcom/a/a/b/at$ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/at$ac;->e:Lcom/a/a/b/at;

    iget-object v1, p0, Lcom/a/a/b/at$ac;->c:Lcom/a/a/b/at$ad;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/at$ac;->c:Lcom/a/a/b/at$ad;

    iget-object v0, p0, Lcom/a/a/b/at$ac;->e:Lcom/a/a/b/at;

    iget v0, v0, Lcom/a/a/b/at;->d:I

    iput v0, p0, Lcom/a/a/b/at$ac;->d:I

    return-void
.end method
