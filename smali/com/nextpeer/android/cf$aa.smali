.class final Lcom/nextpeer/android/cf$aa;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "aa"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nextpeer/android/cf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nextpeer/android/cf;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf$aa;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/cf$aa;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/cf;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/cf;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/nextpeer/android/cf$ab;->a:Lcom/nextpeer/android/cf$ab;

    invoke-virtual {v2}, Lcom/nextpeer/android/cf$ab;->a()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nextpeer/android/cm;

    invoke-static {v0, v1}, Lcom/nextpeer/android/cf;->c(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cm;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/nextpeer/android/cf$ab;->c:Lcom/nextpeer/android/cf$ab;

    invoke-virtual {v2}, Lcom/nextpeer/android/cf$ab;->a()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/nextpeer/android/cf;->f(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/cj;->c()V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/nextpeer/android/cf$ab;->b:Lcom/nextpeer/android/cf$ab;

    invoke-virtual {v2}, Lcom/nextpeer/android/cf$ab;->a()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-static {v0}, Lcom/nextpeer/android/cf;->f(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/cj;->a()V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/nextpeer/android/cf$ab;->d:Lcom/nextpeer/android/cf$ab;

    invoke-virtual {v2}, Lcom/nextpeer/android/cf$ab;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :cond_5
    invoke-static {v0}, Lcom/nextpeer/android/cf;->f(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
