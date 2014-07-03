.class abstract Lcom/nextpeer/android/hr;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Failed due to reauthenticate"

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/hr;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method
