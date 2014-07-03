.class Lcom/nextpeer/android/facebook/Session$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/Session;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$3;->this$0:Lcom/nextpeer/android/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 2

    iget-object v0, p1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->code:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    sget-object v1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$3;->this$0:Lcom/nextpeer/android/facebook/Session;

    #calls: Lcom/nextpeer/android/facebook/Session;->handleAuthorizationResult(ILcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    invoke-static {v1, v0, p1}, Lcom/nextpeer/android/facebook/Session;->access$8(Lcom/nextpeer/android/facebook/Session;ILcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
