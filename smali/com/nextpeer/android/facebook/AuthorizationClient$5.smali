.class Lcom/nextpeer/android/facebook/AuthorizationClient$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/RequestBatch$Callback;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

.field private final synthetic val$fbids:Ljava/util/ArrayList;

.field private final synthetic val$pendingResult:Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

.field private final synthetic val$tokenPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/nextpeer/android/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$pendingResult:Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/nextpeer/android/facebook/RequestBatch;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$fbids:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$pendingResult:Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->token:Lcom/nextpeer/android/facebook/AccessToken;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->val$tokenPermissions:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AccessToken;->createFromTokenWithRefreshedPermissions(Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/List;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AccessToken;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->complete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$2(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "User logged in as different Facebook user."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v3, "Caught exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->complete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$2(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$5;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$2(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    throw v0
.end method
