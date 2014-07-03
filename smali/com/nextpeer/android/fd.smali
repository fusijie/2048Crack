.class final Lcom/nextpeer/android/fd;
.super Lcom/nextpeer/android/hr;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/fc;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/fc;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fd;->a:Lcom/nextpeer/android/fc;

    invoke-direct {p0}, Lcom/nextpeer/android/hr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Share to Facebook friend completed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const-string v0, "NPA_INVITE_FB_FRIENDS_SHARE_TO_FRIENDS_DIALOG_APPROVED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/fd;->a:Lcom/nextpeer/android/fc;

    iget-object v0, v0, Lcom/nextpeer/android/fc;->a:Lcom/nextpeer/android/ex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/ex;->a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/hq;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NPA_INVITE_FB_FRIENDS_SHARE_TO_FRIENDS_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Share to Facebook friend failed, could not create a match with Nextpeer with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/fd;->a:Lcom/nextpeer/android/fc;

    iget-object v0, v0, Lcom/nextpeer/android/fc;->a:Lcom/nextpeer/android/ex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/ex;->a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/hq;)V

    return-void
.end method
