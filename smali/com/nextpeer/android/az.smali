.class final Lcom/nextpeer/android/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Request$GraphUserCallback;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ay$ac;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ay$ac;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/az;->a:Lcom/nextpeer/android/ay$ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/nextpeer/android/facebook/model/GraphUser;Lcom/nextpeer/android/facebook/Response;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/Response;->getError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPFBUserLoginBroker - Could not extract current user details with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/Response;->getError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/az;->a:Lcom/nextpeer/android/ay$ac;

    invoke-static {v0}, Lcom/nextpeer/android/ay$ac;->a(Lcom/nextpeer/android/ay$ac;)Lcom/nextpeer/android/ay;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "NPFBUserLoginBroker - Could not extract access token after request"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/az;->a:Lcom/nextpeer/android/ay$ac;

    invoke-static {v0}, Lcom/nextpeer/android/ay$ac;->a(Lcom/nextpeer/android/ay$ac;)Lcom/nextpeer/android/ay;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "NPFBUserLoginBroker - Could not extract facebook user id after request"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/az;->a:Lcom/nextpeer/android/ay$ac;

    invoke-static {v0}, Lcom/nextpeer/android/ay$ac;->a(Lcom/nextpeer/android/ay$ac;)Lcom/nextpeer/android/ay;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nextpeer/android/az;->a:Lcom/nextpeer/android/ay$ac;

    invoke-static {v2}, Lcom/nextpeer/android/ay$ac;->a(Lcom/nextpeer/android/ay$ac;)Lcom/nextpeer/android/ay;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/nextpeer/android/ay;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
