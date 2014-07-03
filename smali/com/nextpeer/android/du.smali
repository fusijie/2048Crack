.class final Lcom/nextpeer/android/du;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dr;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/du;->a:Lcom/nextpeer/android/dr;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/du;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0, p1}, Lcom/nextpeer/android/dr;->d(Lcom/nextpeer/android/dr;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/du;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->o(Lcom/nextpeer/android/dr;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/du;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->n(Lcom/nextpeer/android/dr;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Match Sign In failed with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/du;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->n(Lcom/nextpeer/android/dr;)V

    return-void
.end method
