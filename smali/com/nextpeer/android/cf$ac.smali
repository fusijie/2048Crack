.class final Lcom/nextpeer/android/cf$ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ac"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/cf;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/cf$ac;->a:Lcom/nextpeer/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/cf;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/cf$ac;-><init>(Lcom/nextpeer/android/cf;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nextpeer/android/cm;

    iget-object v1, p0, Lcom/nextpeer/android/cf$ac;->a:Lcom/nextpeer/android/cf;

    invoke-static {v1}, Lcom/nextpeer/android/cf;->g(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cd;->a(Lcom/nextpeer/android/cm;)V

    const/4 v0, 0x1

    return v0
.end method
