.class Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;
.super Lcom/nextpeer/android/facebook/TokenCachingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetterTokenCachingStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/android/Facebook;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/facebook/android/Facebook;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;-><init>(Lcom/nextpeer/android/facebook/android/Facebook;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    const/4 v1, 0x0

    #setter for: Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$6(Lcom/nextpeer/android/facebook/android/Facebook;Ljava/lang/String;)V

    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    #getter for: Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$0(Lcom/nextpeer/android/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    #getter for: Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$0(Lcom/nextpeer/android/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    #getter for: Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$2(Lcom/nextpeer/android/facebook/android/Facebook;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->putExpirationMilliseconds(Landroid/os/Bundle;J)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    #getter for: Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$3(Lcom/nextpeer/android/facebook/android/Facebook;)[Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/nextpeer/android/facebook/android/Facebook;->stringList([Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$4([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->putPermissions(Landroid/os/Bundle;Ljava/util/List;)V

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->WEB_VIEW:Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->putSource(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/AccessTokenSource;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    #getter for: Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$5(Lcom/nextpeer/android/facebook/android/Facebook;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->putLastRefreshMilliseconds(Landroid/os/Bundle;J)V

    :cond_0
    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    invoke-static {p1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$6(Lcom/nextpeer/android/facebook/android/Facebook;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    invoke-static {p1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->getExpirationMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v1

    #setter for: Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J
    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/android/Facebook;->access$7(Lcom/nextpeer/android/facebook/android/Facebook;J)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    invoke-static {p1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->getPermissions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/nextpeer/android/facebook/android/Facebook;->stringArray(Ljava/util/List;)[Ljava/lang/String;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$8(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$9(Lcom/nextpeer/android/facebook/android/Facebook;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    invoke-static {p1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->getLastRefreshMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v1

    #setter for: Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J
    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/android/Facebook;->access$10(Lcom/nextpeer/android/facebook/android/Facebook;J)V

    return-void
.end method
