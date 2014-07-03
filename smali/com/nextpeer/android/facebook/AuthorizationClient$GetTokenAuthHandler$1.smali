.class Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/internal/PlatformServiceClient$CompletedListener;


# instance fields
.field final synthetic this$1:Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;

.field private final synthetic val$request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;->this$1:Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;->val$request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;->this$1:Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;->val$request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenCompleted(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V

    return-void
.end method
