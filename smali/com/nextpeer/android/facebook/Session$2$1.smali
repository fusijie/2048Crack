.class Lcom/nextpeer/android/facebook/Session$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nextpeer/android/facebook/Session$2;

.field private final synthetic val$accessToken:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

.field private final synthetic val$expirationDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session$2;Lcom/nextpeer/android/facebook/Session$StatusCallback;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$2$1;->this$1:Lcom/nextpeer/android/facebook/Session$2;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Session$2$1;->val$callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session$2$1;->val$accessToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/Session$2$1;->val$expirationDate:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$2$1;->val$callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$2$1;->val$accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session$2$1;->val$expirationDate:Ljava/util/Date;

    invoke-interface {v0, v1, v2}, Lcom/nextpeer/android/facebook/Session$StatusCallback;->accessTokenExtended(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method
