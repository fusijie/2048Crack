.class final Lcom/nextpeer/android/fc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/gx$ac$aa;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ex;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fc;->a:Lcom/nextpeer/android/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "NPA_INVITE_FB_FRIENDS_SHARE_TO_FRIENDS_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/nextpeer/android/gx$ac;)V
    .locals 4

    invoke-virtual {p1}, Lcom/nextpeer/android/gx$ac;->c()Lcom/nextpeer/android/av$ab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not create a match with Nextpeer for the invited user - target friend is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/fc;->a:Lcom/nextpeer/android/ex;

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v2

    new-instance v3, Lcom/nextpeer/android/fd;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/fd;-><init>(Lcom/nextpeer/android/fc;)V

    invoke-virtual {v2, v0, v3}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/av$ab;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nextpeer/android/ex;->a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/hq;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NPA_INVITE_FB_FRIENDS_SHARE_TO_FRIENDS_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to share to Facebook friend with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    return-void
.end method
