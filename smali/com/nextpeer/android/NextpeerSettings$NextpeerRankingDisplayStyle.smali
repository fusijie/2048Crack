.class public final enum Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NextpeerRankingDisplayStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LIST:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

.field public static final enum SOLO:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

.field private static final synthetic a:[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->LIST:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    new-instance v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    const-string v1, "SOLO"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->SOLO:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->LIST:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->SOLO:Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->a:[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;
    .locals 1

    const-class v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;->a:[Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/NextpeerSettings$NextpeerRankingDisplayStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
