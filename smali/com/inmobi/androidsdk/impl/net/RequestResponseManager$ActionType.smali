.class public final enum Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
.super Ljava/lang/Enum;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

.field public static final enum AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

.field private static final synthetic a:[Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    const-string v1, "AdRequest"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    const-string v1, "AdRequest_Interstitial"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->a:[Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->a:[Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-virtual {v0}, [Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    return-object v0
.end method
