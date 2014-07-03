.class final Lcom/nextpeer/android/ev;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eo;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Signout request successful"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-virtual {v0}, Lcom/nextpeer/android/eo;->m()V

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->g(Lcom/nextpeer/android/eo;)V

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/eo$aa;->j()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signout failed with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-virtual {v0}, Lcom/nextpeer/android/eo;->m()V

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->g(Lcom/nextpeer/android/eo;)V

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ev;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/eo$aa;->j()V

    :cond_0
    return-void
.end method
