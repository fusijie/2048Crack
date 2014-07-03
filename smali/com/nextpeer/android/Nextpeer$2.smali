.class Lcom/nextpeer/android/Nextpeer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/Nextpeer;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/Nextpeer;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/Nextpeer$2;->a:Lcom/nextpeer/android/Nextpeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->k()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/Nextpeer;->b(Lcom/nextpeer/android/Nextpeer;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->k()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->k()Lcom/nextpeer/android/Nextpeer;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/Nextpeer;->b(Lcom/nextpeer/android/Nextpeer;)Landroid/os/Bundle;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerActivity;->d(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
