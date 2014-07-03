.class Lcom/nextpeer/android/facebook/android/Facebook$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Session$StatusCallback;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/android/Facebook;

.field private final synthetic val$listener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook$1;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/android/Facebook$1;->val$listener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessTokenExtended(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    return-void
.end method

.method public call(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$1;->this$0:Lcom/nextpeer/android/facebook/android/Facebook;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$1;->val$listener:Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;

    #calls: Lcom/nextpeer/android/facebook/android/Facebook;->onSessionCallback(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    invoke-static {v0, p1, p2, p3, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->access$11(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method
