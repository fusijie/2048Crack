.class final Lcom/nextpeer/android/gv;
.super Lcom/nextpeer/android/gx$ae;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/gu;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gv;->a:Lcom/nextpeer/android/gu;

    invoke-direct {p0}, Lcom/nextpeer/android/gx$ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gv;->a:Lcom/nextpeer/android/gu;

    invoke-static {v0}, Lcom/nextpeer/android/gu;->a(Lcom/nextpeer/android/gu;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to customize the user with the following error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gv;->a:Lcom/nextpeer/android/gu;

    invoke-static {v0}, Lcom/nextpeer/android/gu;->a(Lcom/nextpeer/android/gu;)V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ad;->f()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gv;->a:Lcom/nextpeer/android/gu;

    invoke-static {v0}, Lcom/nextpeer/android/gu;->b(Lcom/nextpeer/android/gu;)Lcom/nextpeer/android/hg;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/hk;->a(Lcom/nextpeer/android/hg;)V

    return-void
.end method
